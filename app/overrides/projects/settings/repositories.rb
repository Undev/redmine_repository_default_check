Deface::Override.new(
    :virtual_path => 'projects/settings/_repositories',
    :name => 'repositories_warnings',
    :insert_before => 'table.list',
    :text => '<%= repositories_warnings %>')
