program stack_queue_demo
    implicit none
    integer, parameter :: maxsize = 10
    integer :: stack(maxsize), queue(maxsize)
    integer :: top, front, rear, choice, value, i

    top = 0
    front = 1
    rear = 0

    do
        print *, "============================"
        print *, "1. Push (Stack)"
        print *, "2. Pop  (Stack)"
        print *, "3. Enqueue (Queue)"
        print *, "4. Dequeue (Queue)"
        print *, "5. Display (Stack & Queue)"
        print *, "6. Exit"
        print *, "============================"
        print *, "Enter your choice: "
        read *, choice

        select case(choice)
        case(1)   ! Push
            if (top == maxsize) then
                print *, "Stack Overflow!"
            else
                print *, "Enter value to push: "
                read *, value
                top = top + 1
                stack(top) = value
                print *, "Pushed ", value
            end if

        case(2)   ! Pop
            if (top == 0) then
                print *, "Stack Underflow!"
            else
                print *, "Popped ", stack(top)
                top = top - 1
            end if

        case(3)   ! Enqueue
            if (rear == maxsize) then
                print *, "Queue Overflow!"
            else
                print *, "Enter value to enqueue: "
                read *, value
                rear = rear + 1
                queue(rear) = value
                print *, "Enqueued ", value
            end if

        case(4)   ! Dequeue
            if (front > rear) then
                print *, "Queue Underflow!"
            else
                print *, "Dequeued ", queue(front)
                front = front + 1
            end if

        case(5)   ! Display
            print *, "----- Current Stack -----"
            if (top == 0) then
                print *, "Stack is empty."
            else
                do i = top, 1, -1
                    print *, stack(i)
                end do
            end if

            print *, "----- Current Queue -----"
            if (front > rear) then
                print *, "Queue is empty."
            else
                do i = front, rear
                    print *, queue(i)
                end do
            end if

        case(6)   ! Exit
            print *, "Exiting..."
            exit

        case default
            print *, "Invalid choice!"
        end select
    end do

end program stack_queue_demo
