.class public Lcom/shabakaty/downloader/i04;
.super Lcom/shabakaty/downloader/g04;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/g04;"
    }
.end annotation


# instance fields
.field public final u:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final v:Lcom/shabakaty/downloader/fv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/fv<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/shabakaty/downloader/fv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/shabakaty/downloader/fv<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/g04;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/i04;->u:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/i04;->v:Lcom/shabakaty/downloader/fv;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/shabakaty/downloader/he0;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/i04;->u:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i04;->v:Lcom/shabakaty/downloader/fv;

    sget-object v1, Lcom/shabakaty/downloader/hv;->a:Lcom/shabakaty/downloader/j61;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/fv;->z(Ljava/lang/Object;)V

    return-void
.end method

.method public x()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i04;->u:Ljava/lang/Object;

    return-object v0
.end method

.method public y(Lcom/shabakaty/downloader/f40;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/f40<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i04;->v:Lcom/shabakaty/downloader/fv;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/f40;->C()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public z(Lcom/shabakaty/downloader/ck2$b;)Lcom/shabakaty/downloader/j61;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/i04;->v:Lcom/shabakaty/downloader/fv;

    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/fv;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/hv;->a:Lcom/shabakaty/downloader/j61;

    return-object p1

    :cond_0
    return-object v1
.end method
