.class public final Lcom/shabakaty/downloader/he0$b;
.super Lcom/shabakaty/downloader/xd0;
.source "IntrinsicsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/he0;->f(Lcom/shabakaty/downloader/hn1;Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public u:I

.field public final synthetic v:Lcom/shabakaty/downloader/ud0;

.field public final synthetic w:Lcom/shabakaty/downloader/me0;

.field public final synthetic x:Lcom/shabakaty/downloader/hn1;

.field public final synthetic y:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/he0$b;->v:Lcom/shabakaty/downloader/ud0;

    iput-object p2, p0, Lcom/shabakaty/downloader/he0$b;->w:Lcom/shabakaty/downloader/me0;

    iput-object p3, p0, Lcom/shabakaty/downloader/he0$b;->x:Lcom/shabakaty/downloader/hn1;

    iput-object p4, p0, Lcom/shabakaty/downloader/he0$b;->y:Ljava/lang/Object;

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/me0;)V

    return-void
.end method


# virtual methods
.method public t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/he0$b;->u:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    .line 2
    iput v1, p0, Lcom/shabakaty/downloader/he0$b;->u:I

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    iput v2, p0, Lcom/shabakaty/downloader/he0$b;->u:I

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/he0$b;->x:Lcom/shabakaty/downloader/hn1;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/gt4;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/hn1;

    iget-object v0, p0, Lcom/shabakaty/downloader/he0$b;->y:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
