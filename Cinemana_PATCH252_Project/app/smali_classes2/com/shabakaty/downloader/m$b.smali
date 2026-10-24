.class public Lcom/shabakaty/downloader/m$b;
.super Lcom/shabakaty/downloader/xn3;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/xn3<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final u:Lcom/shabakaty/downloader/fv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/fv<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final v:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fv;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fv<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xn3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/m$b;->u:Lcom/shabakaty/downloader/fv;

    iput p2, p0, Lcom/shabakaty/downloader/m$b;->v:I

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ck2$b;)Lcom/shabakaty/downloader/j61;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/shabakaty/downloader/ck2$b;",
            ")",
            "Lcom/shabakaty/downloader/j61;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/m$b;->u:Lcom/shabakaty/downloader/fv;

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/m$b;->v:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/pz4;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/pz4;-><init>(Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xn3;->w(Ljava/lang/Object;)Lcom/shabakaty/downloader/tm1;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1, p1}, Lcom/shabakaty/downloader/fv;->l(Ljava/lang/Object;Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/hv;->a:Lcom/shabakaty/downloader/j61;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/m$b;->u:Lcom/shabakaty/downloader/fv;

    sget-object v0, Lcom/shabakaty/downloader/hv;->a:Lcom/shabakaty/downloader/j61;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/fv;->z(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ReceiveElement@"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/shabakaty/downloader/he0;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[receiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/m$b;->v:I

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/q12;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x(Lcom/shabakaty/downloader/f40;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/f40<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/m$b;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p1, Lcom/shabakaty/downloader/f40;->u:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/m$b;->u:Lcom/shabakaty/downloader/fv;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/m$b;->u:Lcom/shabakaty/downloader/fv;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/f40;->u:Ljava/lang/Throwable;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/pz4$a;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/pz4$a;-><init>(Ljava/lang/Throwable;)V

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/pz4;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/pz4;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/m$b;->u:Lcom/shabakaty/downloader/fv;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/f40;->B()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
