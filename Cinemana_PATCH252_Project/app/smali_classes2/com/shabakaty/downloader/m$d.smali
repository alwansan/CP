.class public Lcom/shabakaty/downloader/m$d;
.super Lcom/shabakaty/downloader/xn3;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
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
.field public final u:Lcom/shabakaty/downloader/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/m$a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final v:Lcom/shabakaty/downloader/fv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/fv<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/m$a;Lcom/shabakaty/downloader/fv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/m$a<",
            "TE;>;",
            "Lcom/shabakaty/downloader/fv<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xn3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/m$d;->u:Lcom/shabakaty/downloader/m$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/m$d;->v:Lcom/shabakaty/downloader/fv;

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
    iget-object p2, p0, Lcom/shabakaty/downloader/m$d;->v:Lcom/shabakaty/downloader/fv;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/m$d;->w(Ljava/lang/Object;)Lcom/shabakaty/downloader/tm1;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1, p1}, Lcom/shabakaty/downloader/fv;->l(Ljava/lang/Object;Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/hv;->a:Lcom/shabakaty/downloader/j61;

    return-object p1

    :cond_0
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
    iget-object v0, p0, Lcom/shabakaty/downloader/m$d;->u:Lcom/shabakaty/downloader/m$a;

    .line 2
    iput-object p1, v0, Lcom/shabakaty/downloader/m$a;->a:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/m$d;->v:Lcom/shabakaty/downloader/fv;

    sget-object v0, Lcom/shabakaty/downloader/hv;->a:Lcom/shabakaty/downloader/j61;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/fv;->z(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ReceiveHasNext@"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/shabakaty/downloader/he0;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w(Ljava/lang/Object;)Lcom/shabakaty/downloader/tm1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/m$d;->u:Lcom/shabakaty/downloader/m$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/m$a;->b:Lcom/shabakaty/downloader/m;

    iget-object v0, v0, Lcom/shabakaty/downloader/z0;->s:Lcom/shabakaty/downloader/tm1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/m$d;->v:Lcom/shabakaty/downloader/fv;

    invoke-interface {v1}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/c73;

    invoke-direct {v2, v0, p1, v1}, Lcom/shabakaty/downloader/c73;-><init>(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Lcom/shabakaty/downloader/me0;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public x(Lcom/shabakaty/downloader/f40;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/f40<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/f40;->u:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/m$d;->v:Lcom/shabakaty/downloader/fv;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/fv;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/m$d;->v:Lcom/shabakaty/downloader/fv;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/f40;->B()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/fv;->n(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/m$d;->u:Lcom/shabakaty/downloader/m$a;

    .line 6
    iput-object p1, v1, Lcom/shabakaty/downloader/m$a;->a:Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/m$d;->v:Lcom/shabakaty/downloader/fv;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/fv;->z(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
