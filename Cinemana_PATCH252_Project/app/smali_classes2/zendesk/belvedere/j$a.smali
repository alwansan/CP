.class public Lzendesk/belvedere/j$a;
.super Ljava/lang/Object;
.source "ImageStreamPresenter.java"

# interfaces
.implements Lzendesk/belvedere/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzendesk/belvedere/j;


# direct methods
.method public constructor <init>(Lzendesk/belvedere/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/j$a;->a:Lzendesk/belvedere/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/jz1;)Z
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/jz1;->c:Lcom/shabakaty/downloader/tp2;

    .line 2
    iget-object v1, p0, Lzendesk/belvedere/j$a;->a:Lzendesk/belvedere/j;

    .line 3
    iget-object v2, v1, Lzendesk/belvedere/j;->a:Lcom/shabakaty/downloader/lz1;

    .line 4
    check-cast v2, Lzendesk/belvedere/h;

    .line 5
    iget-wide v3, v2, Lzendesk/belvedere/h;->e:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 6
    iget-wide v7, v0, Lcom/shabakaty/downloader/tp2;->w:J

    cmp-long v9, v7, v3

    if-lez v9, :cond_1

    :cond_0
    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-nez v9, :cond_6

    .line 7
    :cond_1
    iget-boolean v1, p1, Lcom/shabakaty/downloader/jz1;->d:Z

    xor-int/2addr v1, v6

    .line 8
    iput-boolean v1, p1, Lcom/shabakaty/downloader/jz1;->d:Z

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, v2, Lzendesk/belvedere/h;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, v2, Lzendesk/belvedere/h;->c:Ljava/util/List;

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, v2, Lzendesk/belvedere/h;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, v2, Lzendesk/belvedere/h;->c:Ljava/util/List;

    .line 13
    :goto_0
    iget-object v2, p0, Lzendesk/belvedere/j$a;->a:Lzendesk/belvedere/j;

    .line 14
    iget-object v2, v2, Lzendesk/belvedere/j;->b:Lzendesk/belvedere/i;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    check-cast v2, Lzendesk/belvedere/l;

    invoke-virtual {v2, v1}, Lzendesk/belvedere/l;->c(I)V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-boolean p1, p1, Lcom/shabakaty/downloader/jz1;->d:Z

    if-eqz p1, :cond_3

    .line 19
    iget-object p1, p0, Lzendesk/belvedere/j$a;->a:Lzendesk/belvedere/j;

    .line 20
    iget-object p1, p1, Lzendesk/belvedere/j;->c:Lzendesk/belvedere/c;

    .line 21
    invoke-virtual {p1, v1}, Lzendesk/belvedere/c;->b2(Ljava/util/List;)V

    goto :goto_2

    .line 22
    :cond_3
    iget-object p1, p0, Lzendesk/belvedere/j$a;->a:Lzendesk/belvedere/j;

    .line 23
    iget-object p1, p1, Lzendesk/belvedere/j;->c:Lzendesk/belvedere/c;

    .line 24
    iget-object p1, p1, Lzendesk/belvedere/c;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 25
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/belvedere/c$b;

    if-eqz v0, :cond_4

    .line 26
    invoke-interface {v0, v1}, Lzendesk/belvedere/c$b;->onMediaDeselected(Ljava/util/List;)V

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v5, 0x1

    goto :goto_3

    .line 27
    :cond_6
    iget-object p1, v1, Lzendesk/belvedere/j;->b:Lzendesk/belvedere/i;

    const v0, 0x7f12003f

    .line 28
    check-cast p1, Lzendesk/belvedere/l;

    .line 29
    iget-object p1, p1, Lzendesk/belvedere/l;->l:Landroid/app/Activity;

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3
    return v5
.end method
