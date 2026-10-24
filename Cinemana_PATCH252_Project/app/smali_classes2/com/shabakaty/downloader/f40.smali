.class public final Lcom/shabakaty/downloader/f40;
.super Lcom/shabakaty/downloader/g04;
.source "AbstractChannel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/zn3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/g04;",
        "Lcom/shabakaty/downloader/zn3<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final u:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/g04;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/f40;->u:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final B()Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f40;->u:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/g40;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/g40;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final C()Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f40;->u:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/h40;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/h40;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ck2$b;)Lcom/shabakaty/downloader/j61;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/shabakaty/downloader/ck2$b;",
            ")",
            "Lcom/shabakaty/downloader/j61;"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/hv;->a:Lcom/shabakaty/downloader/j61;

    return-object p1
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Closed@"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/shabakaty/downloader/he0;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/f40;->u:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()V
    .locals 0

    return-void
.end method

.method public x()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public y(Lcom/shabakaty/downloader/f40;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/f40<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public z(Lcom/shabakaty/downloader/ck2$b;)Lcom/shabakaty/downloader/j61;
    .locals 0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/hv;->a:Lcom/shabakaty/downloader/j61;

    return-object p1
.end method
