.class public final Lcom/shabakaty/downloader/za2;
.super Lcom/shabakaty/downloader/af2;
.source "JvmBuiltIns.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/xa2$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/nu2;

.field public final synthetic s:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nu2;Z)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/za2;->r:Lcom/shabakaty/downloader/nu2;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/za2;->s:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xa2$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/za2;->r:Lcom/shabakaty/downloader/nu2;

    iget-boolean v2, p0, Lcom/shabakaty/downloader/za2;->s:Z

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/xa2$b;-><init>(Lcom/shabakaty/downloader/nu2;Z)V

    return-object v0
.end method
