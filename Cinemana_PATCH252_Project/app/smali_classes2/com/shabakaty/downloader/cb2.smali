.class public final Lcom/shabakaty/downloader/cb2;
.super Lcom/shabakaty/downloader/af2;
.source "JvmBuiltInsCustomizer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qe2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ab2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ab2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/cb2;->r:Lcom/shabakaty/downloader/ab2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cb2;->r:Lcom/shabakaty/downloader/ab2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ab2;->a:Lcom/shabakaty/downloader/nu2;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zd2;->f()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    const-string v1, "moduleDescriptor.builtIns.anyType"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
