.class public final Lcom/shabakaty/downloader/xa2$c;
.super Lcom/shabakaty/downloader/af2;
.source "JvmBuiltIns.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xa2;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/xa2$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/ab2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/xa2;

.field public final synthetic s:Lcom/shabakaty/downloader/md4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xa2;Lcom/shabakaty/downloader/md4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xa2$c;->r:Lcom/shabakaty/downloader/xa2;

    iput-object p2, p0, Lcom/shabakaty/downloader/xa2$c;->s:Lcom/shabakaty/downloader/md4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ab2;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/xa2$c;->r:Lcom/shabakaty/downloader/xa2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zd2;->l()Lcom/shabakaty/downloader/qu2;

    move-result-object v1

    const-string v2, "builtInsModule"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/shabakaty/downloader/xa2$c;->s:Lcom/shabakaty/downloader/md4;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/ya2;

    iget-object v4, p0, Lcom/shabakaty/downloader/xa2$c;->r:Lcom/shabakaty/downloader/xa2;

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/ya2;-><init>(Lcom/shabakaty/downloader/xa2;)V

    .line 4
    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ab2;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    return-object v0
.end method
