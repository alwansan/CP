.class public Lzendesk/belvedere/b;
.super Lzendesk/belvedere/FloatingActionMenu$b;
.source "FloatingActionMenu.java"


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/y93;

.field public final synthetic b:Lzendesk/belvedere/FloatingActionMenu;


# direct methods
.method public constructor <init>(Lzendesk/belvedere/FloatingActionMenu;Lcom/shabakaty/downloader/y93;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/b;->b:Lzendesk/belvedere/FloatingActionMenu;

    iput-object p2, p0, Lzendesk/belvedere/b;->a:Lcom/shabakaty/downloader/y93;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lzendesk/belvedere/FloatingActionMenu$b;-><init>(Lzendesk/belvedere/FloatingActionMenu;Lzendesk/belvedere/b;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lzendesk/belvedere/b;->b:Lzendesk/belvedere/FloatingActionMenu;

    iget-object v0, p0, Lzendesk/belvedere/b;->a:Lcom/shabakaty/downloader/y93;

    iget-object v0, v0, Lcom/shabakaty/downloader/y93;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    sget v1, Lzendesk/belvedere/FloatingActionMenu;->z:I

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
