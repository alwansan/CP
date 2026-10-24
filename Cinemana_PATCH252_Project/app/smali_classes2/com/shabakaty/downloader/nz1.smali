.class public Lcom/shabakaty/downloader/nz1;
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
    iput-object p1, p0, Lcom/shabakaty/downloader/nz1;->r:Lzendesk/belvedere/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/nz1;->r:Lzendesk/belvedere/j;

    .line 2
    iget-object v0, p1, Lzendesk/belvedere/j;->b:Lzendesk/belvedere/i;

    .line 3
    iget-object p1, p1, Lzendesk/belvedere/j;->a:Lcom/shabakaty/downloader/lz1;

    .line 4
    check-cast p1, Lzendesk/belvedere/h;

    invoke-virtual {p1}, Lzendesk/belvedere/h;->a()Lcom/shabakaty/downloader/cp2;

    move-result-object p1

    iget-object v1, p0, Lcom/shabakaty/downloader/nz1;->r:Lzendesk/belvedere/j;

    .line 5
    iget-object v1, v1, Lzendesk/belvedere/j;->c:Lzendesk/belvedere/c;

    .line 6
    check-cast v0, Lzendesk/belvedere/l;

    invoke-virtual {v0, p1, v1}, Lzendesk/belvedere/l;->a(Lcom/shabakaty/downloader/cp2;Lzendesk/belvedere/c;)V

    return-void
.end method
