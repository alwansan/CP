.class public Lcom/shabakaty/downloader/mz1;
.super Ljava/lang/Object;
.source "ImageStreamPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:Lzendesk/belvedere/j;


# direct methods
.method public constructor <init>(Lzendesk/belvedere/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/mz1;->r:Lzendesk/belvedere/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/mz1;->r:Lzendesk/belvedere/j;

    .line 2
    iget-object v0, p1, Lzendesk/belvedere/j;->b:Lzendesk/belvedere/i;

    .line 3
    iget-object p1, p1, Lzendesk/belvedere/j;->a:Lcom/shabakaty/downloader/lz1;

    .line 4
    check-cast p1, Lzendesk/belvedere/h;

    .line 5
    invoke-virtual {p1}, Lzendesk/belvedere/h;->a()Lcom/shabakaty/downloader/cp2;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/downloader/cp2;->t:Landroid/content/Intent;

    const-string v2, "com.google.android.apps.photos"

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/mz1;->r:Lzendesk/belvedere/j;

    .line 10
    iget-object v1, v1, Lzendesk/belvedere/j;->c:Lzendesk/belvedere/c;

    .line 11
    check-cast v0, Lzendesk/belvedere/l;

    invoke-virtual {v0, p1, v1}, Lzendesk/belvedere/l;->a(Lcom/shabakaty/downloader/cp2;Lzendesk/belvedere/c;)V

    return-void
.end method
