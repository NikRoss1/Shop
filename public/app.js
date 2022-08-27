
function something()
{
    var x = window.localStorage.getItem('aaa');

     x = x * 1 + 1;

    window.localStorage.setItem('aaa', x);
    
    alert(x);
}

function add_to_cart(id)
{
    var key = 'product_' + id;

    var x = window.localStorage.getItem(key);
    x = x * 1 + 1;
    window.localStorage.setItem(key, x);

    alert('Items in your cart:' + cart_get_number_items())
}

function cart_get_number_items()
{
    var cnt = 0;

    for(var i = 0; i < window.localStorage.length; i++) 
    {
        var key = window.localStorage.key(i); //подключаем ключ
        var value = window.localStorage.getItem(key); // получаем значени, аналог в ruby: hh[key] = x
    
        if(key.indexOf('product_') == 0)
        {
            cnt = cnt + value * 1;
        }
    }

    return cnt;

}

function cart_get_orders()
{
    var orders = '';

    for(var i = 0; i < window.localStorage.length; i++) 
    {
        var key = window.localStorage.key(i); //подключаем ключ
        var value = window.localStorage.getItem(key); // получаем значени, аналог в ruby: hh[key] = x
    
        if(key.indexOf('product_') == 0)
        {
            orders = orders + key + '=' + value + ',';
        }
    }

    return orders;

}