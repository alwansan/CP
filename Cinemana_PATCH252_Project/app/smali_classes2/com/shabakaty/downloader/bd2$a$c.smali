.class public final Lcom/shabakaty/downloader/bd2$a$c;
.super Lcom/shabakaty/downloader/af2;
.source "KPackageImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/bd2$a;-><init>(Lcom/shabakaty/downloader/bd2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/fr4<",
        "+",
        "Lcom/shabakaty/downloader/pb2;",
        "+",
        "Lcom/shabakaty/downloader/ti3;",
        "+",
        "Lcom/shabakaty/downloader/ob2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/bd2$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bd2$a;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/bd2$a$c;->r:Lcom/shabakaty/downloader/bd2$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bd2$a$c;->r:Lcom/shabakaty/downloader/bd2$a;

    invoke-static {v0}, Lcom/shabakaty/downloader/bd2$a;->a(Lcom/shabakaty/downloader/bd2$a;)Lcom/shabakaty/downloader/yp3;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/yp3;->b:Lcom/shabakaty/downloader/be2;

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/be2;->c:[Ljava/lang/String;

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/be2;->e:[Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 5
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/vb2;->h([Ljava/lang/String;[Ljava/lang/String;)Lcom/shabakaty/downloader/x93;

    move-result-object v1

    .line 6
    iget-object v2, v1, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 7
    check-cast v2, Lcom/shabakaty/downloader/pb2;

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 9
    check-cast v1, Lcom/shabakaty/downloader/ti3;

    .line 10
    new-instance v3, Lcom/shabakaty/downloader/fr4;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/be2;->b:Lcom/shabakaty/downloader/ob2;

    .line 12
    invoke-direct {v3, v2, v1, v0}, Lcom/shabakaty/downloader/fr4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v3

    :cond_1
    :goto_0
    return-object v1
.end method
