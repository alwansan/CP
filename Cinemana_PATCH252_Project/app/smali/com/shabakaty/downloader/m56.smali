.class public final Lcom/shabakaty/downloader/m56;
.super Lcom/shabakaty/downloader/x0;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/m56;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Lcom/shabakaty/downloader/o30$c;

.field public r:Lcom/shabakaty/downloader/qd7;

.field public s:[B

.field public t:[I

.field public u:[Ljava/lang/String;

.field public v:[I

.field public w:[[B

.field public x:[Lcom/shabakaty/downloader/k81;

.field public y:Z

.field public final z:Lcom/shabakaty/downloader/jl6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/qa6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qa6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/m56;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/qd7;Lcom/shabakaty/downloader/jl6;Lcom/shabakaty/downloader/o30$c;[I[IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/m56;->r:Lcom/shabakaty/downloader/qd7;

    iput-object p2, p0, Lcom/shabakaty/downloader/m56;->z:Lcom/shabakaty/downloader/jl6;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/shabakaty/downloader/m56;->A:Lcom/shabakaty/downloader/o30$c;

    iput-object p1, p0, Lcom/shabakaty/downloader/m56;->t:[I

    iput-object p1, p0, Lcom/shabakaty/downloader/m56;->u:[Ljava/lang/String;

    iput-object p1, p0, Lcom/shabakaty/downloader/m56;->v:[I

    iput-object p1, p0, Lcom/shabakaty/downloader/m56;->w:[[B

    iput-object p1, p0, Lcom/shabakaty/downloader/m56;->x:[Lcom/shabakaty/downloader/k81;

    iput-boolean p6, p0, Lcom/shabakaty/downloader/m56;->y:Z

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/qd7;[B[I[Ljava/lang/String;[I[[BZ[Lcom/shabakaty/downloader/k81;)V
    .locals 0

    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/m56;->r:Lcom/shabakaty/downloader/qd7;

    iput-object p2, p0, Lcom/shabakaty/downloader/m56;->s:[B

    iput-object p3, p0, Lcom/shabakaty/downloader/m56;->t:[I

    iput-object p4, p0, Lcom/shabakaty/downloader/m56;->u:[Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/shabakaty/downloader/m56;->z:Lcom/shabakaty/downloader/jl6;

    iput-object p1, p0, Lcom/shabakaty/downloader/m56;->A:Lcom/shabakaty/downloader/o30$c;

    iput-object p5, p0, Lcom/shabakaty/downloader/m56;->v:[I

    iput-object p6, p0, Lcom/shabakaty/downloader/m56;->w:[[B

    iput-object p8, p0, Lcom/shabakaty/downloader/m56;->x:[Lcom/shabakaty/downloader/k81;

    iput-boolean p7, p0, Lcom/shabakaty/downloader/m56;->y:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/m56;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/shabakaty/downloader/m56;

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->r:Lcom/shabakaty/downloader/qd7;

    iget-object v3, p1, Lcom/shabakaty/downloader/m56;->r:Lcom/shabakaty/downloader/qd7;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->s:[B

    iget-object v3, p1, Lcom/shabakaty/downloader/m56;->s:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->t:[I

    iget-object v3, p1, Lcom/shabakaty/downloader/m56;->t:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->u:[Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/m56;->u:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->z:Lcom/shabakaty/downloader/jl6;

    iget-object v3, p1, Lcom/shabakaty/downloader/m56;->z:Lcom/shabakaty/downloader/jl6;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->A:Lcom/shabakaty/downloader/o30$c;

    iget-object v3, p1, Lcom/shabakaty/downloader/m56;->A:Lcom/shabakaty/downloader/o30$c;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->v:[I

    iget-object v3, p1, Lcom/shabakaty/downloader/m56;->v:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->w:[[B

    iget-object v3, p1, Lcom/shabakaty/downloader/m56;->w:[[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->x:[Lcom/shabakaty/downloader/k81;

    iget-object v3, p1, Lcom/shabakaty/downloader/m56;->x:[Lcom/shabakaty/downloader/k81;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/shabakaty/downloader/m56;->y:Z

    iget-boolean p1, p1, Lcom/shabakaty/downloader/m56;->y:Z

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->r:Lcom/shabakaty/downloader/qd7;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->s:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->t:[I

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->u:[Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->z:Lcom/shabakaty/downloader/jl6;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->A:Lcom/shabakaty/downloader/o30$c;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->v:[I

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->w:[[B

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->x:[Lcom/shabakaty/downloader/k81;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/m56;->y:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogEventParcelable["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->r:Lcom/shabakaty/downloader/qd7;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", LogEventBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->s:[B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", TestCodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->t:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", MendelPackages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->u:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", LogEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->z:Lcom/shabakaty/downloader/jl6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ExtensionProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->A:Lcom/shabakaty/downloader/o30$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", VeProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->v:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->w:[[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentTokensParcelables: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->x:[Lcom/shabakaty/downloader/k81;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AddPhenotypeExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/m56;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/m56;->r:Lcom/shabakaty/downloader/qd7;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/shabakaty/downloader/m56;->s:[B

    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->c(Landroid/os/Parcel;I[BZ)V

    iget-object v1, p0, Lcom/shabakaty/downloader/m56;->t:[I

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lcom/shabakaty/downloader/vw3;->f(Landroid/os/Parcel;I[IZ)V

    const/4 v1, 0x5

    iget-object v4, p0, Lcom/shabakaty/downloader/m56;->u:[Ljava/lang/String;

    invoke-static {p1, v1, v4, v3}, Lcom/shabakaty/downloader/vw3;->j(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v1, 0x6

    iget-object v4, p0, Lcom/shabakaty/downloader/m56;->v:[I

    invoke-static {p1, v1, v4, v3}, Lcom/shabakaty/downloader/vw3;->f(Landroid/os/Parcel;I[IZ)V

    const/4 v1, 0x7

    iget-object v4, p0, Lcom/shabakaty/downloader/m56;->w:[[B

    invoke-static {p1, v1, v4, v3}, Lcom/shabakaty/downloader/vw3;->d(Landroid/os/Parcel;I[[BZ)V

    const/16 v1, 0x8

    iget-boolean v4, p0, Lcom/shabakaty/downloader/m56;->y:Z

    .line 3
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x9

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/m56;->x:[Lcom/shabakaty/downloader/k81;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->l(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 6
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
