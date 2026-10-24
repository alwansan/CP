.class public final Lcom/shabakaty/downloader/l92$d;
.super Lcom/shabakaty/downloader/ck2$a;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/l92;->A(Ljava/lang/Object;Lcom/shabakaty/downloader/tz2;Lcom/shabakaty/downloader/k92;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/shabakaty/downloader/l92;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/l92;Ljava/lang/Object;)V
    .locals 0

    iput-object p3, p0, Lcom/shabakaty/downloader/l92$d;->d:Lcom/shabakaty/downloader/l92;

    iput-object p4, p0, Lcom/shabakaty/downloader/l92$d;->e:Ljava/lang/Object;

    .line 1
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/ck2$a;-><init>(Lcom/shabakaty/downloader/ck2;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ck2;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/l92$d;->d:Lcom/shabakaty/downloader/l92;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/l92$d;->e:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 3
    :cond_1
    sget-object p1, Lcom/shabakaty/downloader/bk2;->a:Ljava/lang/Object;

    :goto_1
    return-object p1
.end method
