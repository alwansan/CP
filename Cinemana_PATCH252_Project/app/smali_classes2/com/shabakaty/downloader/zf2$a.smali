.class public final Lcom/shabakaty/downloader/zf2$a;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaPackageFragmentProvider.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/zf2;->d(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/yf2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/yf2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/zf2;

.field public final synthetic s:Lcom/shabakaty/downloader/s72;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zf2;Lcom/shabakaty/downloader/s72;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/zf2$a;->r:Lcom/shabakaty/downloader/zf2;

    iput-object p2, p0, Lcom/shabakaty/downloader/zf2$a;->s:Lcom/shabakaty/downloader/s72;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yf2;

    iget-object v1, p0, Lcom/shabakaty/downloader/zf2$a;->r:Lcom/shabakaty/downloader/zf2;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/zf2;->a:Lcom/shabakaty/downloader/bg2;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/zf2$a;->s:Lcom/shabakaty/downloader/s72;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/yf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/s72;)V

    return-object v0
.end method
