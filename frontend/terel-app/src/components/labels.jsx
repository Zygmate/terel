const VARIANTS = {
    default: "14px",
    small: "10px",
    large: "18px"
}
export default function Label({ inner, variant }) {
    return (
        <div className="label">
            <p style={{ fontSize: variant ? VARIANTS[variant] : VARIANTS.default }} className="label-inner">{inner}</p>
        </div>
    )
}
