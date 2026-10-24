.class public final Lcom/shabakaty/downloader/z0$b;
.super Lcom/shabakaty/downloader/ck2$a;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/z0;->c(Lcom/shabakaty/downloader/g04;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/shabakaty/downloader/z0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/z0;)V
    .locals 0

    iput-object p3, p0, Lcom/shabakaty/downloader/z0$b;->d:Lcom/shabakaty/downloader/z0;

    .line 1
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/ck2$a;-><init>(Lcom/shabakaty/downloader/ck2;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ck2;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/z0$b;->d:Lcom/shabakaty/downloader/z0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/z0;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/bk2;->a:Ljava/lang/Object;

    :goto_0
    return-object p1
.end method
