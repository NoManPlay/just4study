import * as React from 'react';

interface IProps {
    name: string;
    age: number;
}
const Func: React.FunctionComponent<IProps> = ({ name, age }) => {

    return (
        <div>
            {name}
            {age}
        </div>
    )
}

export default Func;