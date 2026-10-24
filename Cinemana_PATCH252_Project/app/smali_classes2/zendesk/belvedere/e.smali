.class public final Lzendesk/belvedere/e;
.super Ljava/lang/Object;
.source "ImageStreamItems.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:Lzendesk/belvedere/d$b;


# direct methods
.method public constructor <init>(Lzendesk/belvedere/d$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/e;->r:Lzendesk/belvedere/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lzendesk/belvedere/e;->r:Lzendesk/belvedere/d$b;

    check-cast p1, Lzendesk/belvedere/j$a;

    .line 2
    iget-object v0, p1, Lzendesk/belvedere/j$a;->a:Lzendesk/belvedere/j;

    .line 3
    iget-object v0, v0, Lzendesk/belvedere/j;->a:Lcom/shabakaty/downloader/lz1;

    .line 4
    check-cast v0, Lzendesk/belvedere/h;

    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1}, Lzendesk/belvedere/h;->b(I)Lcom/shabakaty/downloader/cp2;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p1, Lzendesk/belvedere/j$a;->a:Lzendesk/belvedere/j;

    .line 7
    iget-object v2, v0, Lzendesk/belvedere/j;->b:Lzendesk/belvedere/i;

    .line 8
    iget-object v0, v0, Lzendesk/belvedere/j;->a:Lcom/shabakaty/downloader/lz1;

    .line 9
    check-cast v0, Lzendesk/belvedere/h;

    .line 10
    invoke-virtual {v0, v1}, Lzendesk/belvedere/h;->b(I)Lcom/shabakaty/downloader/cp2;

    move-result-object v0

    .line 11
    iget-object p1, p1, Lzendesk/belvedere/j$a;->a:Lzendesk/belvedere/j;

    .line 12
    iget-object p1, p1, Lzendesk/belvedere/j;->c:Lzendesk/belvedere/c;

    .line 13
    check-cast v2, Lzendesk/belvedere/l;

    invoke-virtual {v2, v0, p1}, Lzendesk/belvedere/l;->a(Lcom/shabakaty/downloader/cp2;Lzendesk/belvedere/c;)V

    :cond_1
    return-void
.end method
