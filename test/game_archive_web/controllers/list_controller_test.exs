defmodule GameArchiveWeb.ListControllerTest do
  use GameArchiveWeb.ConnCase

  import GameArchive.ListsFixtures

  @create_attrs %{}
  @update_attrs %{}
  @invalid_attrs %{}

  describe "index" do
    test "lists all lists", %{conn: conn} do
      conn = get(conn, ~p"/lists")
      assert html_response(conn, 200) =~ "Listing Lists"
    end
  end

  describe "new list" do
    test "renders form", %{conn: conn} do
      conn = get(conn, ~p"/lists/new")
      assert html_response(conn, 200) =~ "New List"
    end
  end

  describe "create list" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/lists", list: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == ~p"/lists/#{id}"

      conn = get(conn, ~p"/lists/#{id}")
      assert html_response(conn, 200) =~ "List #{id}"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/lists", list: @invalid_attrs)
      assert html_response(conn, 200) =~ "New List"
    end
  end

  describe "edit list" do
    setup [:create_list]

    test "renders form for editing chosen list", %{conn: conn, list: list} do
      conn = get(conn, ~p"/lists/#{list}/edit")
      assert html_response(conn, 200) =~ "Edit List"
    end
  end

  describe "update list" do
    setup [:create_list]

    test "redirects when data is valid", %{conn: conn, list: list} do
      conn = put(conn, ~p"/lists/#{list}", list: @update_attrs)
      assert redirected_to(conn) == ~p"/lists/#{list}"

      conn = get(conn, ~p"/lists/#{list}")
      assert html_response(conn, 200)
    end

    test "renders errors when data is invalid", %{conn: conn, list: list} do
      conn = put(conn, ~p"/lists/#{list}", list: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit List"
    end
  end

  describe "delete list" do
    setup [:create_list]

    test "deletes chosen list", %{conn: conn, list: list} do
      conn = delete(conn, ~p"/lists/#{list}")
      assert redirected_to(conn) == ~p"/lists"

      assert_error_sent 404, fn ->
        get(conn, ~p"/lists/#{list}")
      end
    end
  end

  defp create_list(_) do
    list = list_fixture()
    %{list: list}
  end
end
