template<typename T>
BST<T>::postorder_iterator::postorder_iterator(Queue<T> que)
    : _queue(que)
{}

template <typename T>
T& BST<T>::postorder_iterator::operator*()
{
    return _queue.front();
}

template <typename T>
typename BST<T>::postorder_iterator& BST<T>::postorder_iterator::operator++()
{
    _queue.pop();
    return *this;
}

template <typename T>
typename BST<T>::postorder_iterator BST<T>::postorder_iterator::operator++(int)
{
    postorder_iterator tmp = *this;
    ++(*this);

    return tmp;
}
