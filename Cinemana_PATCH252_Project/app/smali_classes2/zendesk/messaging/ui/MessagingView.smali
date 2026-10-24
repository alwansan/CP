.class public Lzendesk/messaging/ui/MessagingView;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "MessagingView.java"


# static fields
.field public static final DEFAULT_ANIMATION_DURATION:J


# instance fields
.field public final cellListAdapter:Lzendesk/messaging/ui/CellListAdapter;

.field public final lostConnectionBanner:Lzendesk/messaging/ui/LostConnectionBanner;

.field public final progressBar:Lzendesk/commonui/AlmostRealProgressBar;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lzendesk/messaging/ui/MessagingView;->DEFAULT_ANIMATION_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lzendesk/messaging/ui/MessagingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lzendesk/messaging/R$layout;->zui_view_messaging:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4
    sget p1, Lzendesk/messaging/R$id;->zui_progressBar:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzendesk/commonui/AlmostRealProgressBar;

    iput-object p1, p0, Lzendesk/messaging/ui/MessagingView;->progressBar:Lzendesk/commonui/AlmostRealProgressBar;

    .line 5
    new-instance p1, Lzendesk/messaging/ui/CellListAdapter;

    invoke-direct {p1}, Lzendesk/messaging/ui/CellListAdapter;-><init>()V

    iput-object p1, p0, Lzendesk/messaging/ui/MessagingView;->cellListAdapter:Lzendesk/messaging/ui/CellListAdapter;

    .line 6
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    .line 7
    invoke-direct {p2, p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 8
    sget p3, Lzendesk/messaging/R$id;->zui_recycler_view:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 10
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 11
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$s;

    move-result-object p1

    sget v1, Lzendesk/messaging/R$layout;->zui_cell_response_options_stacked:I

    .line 12
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$s;->a(I)Landroidx/recyclerview/widget/RecyclerView$s$a;

    move-result-object p1

    .line 13
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$s$a;->b:I

    .line 14
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$s$a;->a:Ljava/util/ArrayList;

    .line 15
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/i;

    invoke-direct {p1}, Landroidx/recyclerview/widget/i;-><init>()V

    .line 18
    sget-wide v1, Lzendesk/messaging/ui/MessagingView;->DEFAULT_ANIMATION_DURATION:J

    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$j;->setAddDuration(J)V

    .line 19
    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$j;->setChangeDuration(J)V

    .line 20
    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$j;->setRemoveDuration(J)V

    .line 21
    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$j;->setMoveDuration(J)V

    .line 22
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/d0;->setSupportsChangeAnimations(Z)V

    .line 23
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$j;)V

    .line 24
    sget p1, Lzendesk/messaging/R$id;->zui_input_box:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzendesk/messaging/ui/InputBox;

    .line 25
    invoke-static {p0, p3, p1}, Lzendesk/messaging/ui/LostConnectionBanner;->create(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;Lzendesk/messaging/ui/InputBox;)Lzendesk/messaging/ui/LostConnectionBanner;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/ui/MessagingView;->lostConnectionBanner:Lzendesk/messaging/ui/LostConnectionBanner;

    .line 26
    new-instance v0, Lzendesk/messaging/ui/RecyclerViewScroller;

    iget-object v1, p0, Lzendesk/messaging/ui/MessagingView;->cellListAdapter:Lzendesk/messaging/ui/CellListAdapter;

    invoke-direct {v0, p3, p2, v1}, Lzendesk/messaging/ui/RecyclerViewScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 27
    invoke-virtual {v0, p1}, Lzendesk/messaging/ui/RecyclerViewScroller;->install(Lzendesk/messaging/ui/InputBox;)V

    return-void
.end method


# virtual methods
.method public renderState(Lzendesk/messaging/ui/MessagingState;Lzendesk/messaging/ui/MessagingCellFactory;Lcom/squareup/picasso/k;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lzendesk/messaging/ui/MessagingView;->cellListAdapter:Lzendesk/messaging/ui/CellListAdapter;

    iget-object v1, p1, Lzendesk/messaging/ui/MessagingState;->messagingItems:Ljava/util/List;

    iget-object v2, p1, Lzendesk/messaging/ui/MessagingState;->typingState:Lzendesk/messaging/ui/MessagingState$TypingState;

    iget-object v3, p1, Lzendesk/messaging/ui/MessagingState;->attachmentSettings:Lzendesk/messaging/AttachmentSettings;

    invoke-virtual {p2, v1, v2, p3, v3}, Lzendesk/messaging/ui/MessagingCellFactory;->createCells(Ljava/util/List;Lzendesk/messaging/ui/MessagingState$TypingState;Lcom/squareup/picasso/k;Lzendesk/messaging/AttachmentSettings;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/s;->submitList(Ljava/util/List;)V

    .line 2
    iget-boolean p2, p1, Lzendesk/messaging/ui/MessagingState;->progressBarVisible:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 3
    iget-object p2, p0, Lzendesk/messaging/ui/MessagingView;->progressBar:Lzendesk/commonui/AlmostRealProgressBar;

    sget-object v0, Lzendesk/commonui/AlmostRealProgressBar;->x:Ljava/util/List;

    .line 4
    iget-object v1, p2, Lzendesk/commonui/AlmostRealProgressBar;->v:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p2, Lzendesk/commonui/AlmostRealProgressBar;->u:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iput-object p3, p2, Lzendesk/commonui/AlmostRealProgressBar;->v:Ljava/lang/Runnable;

    goto :goto_0

    .line 7
    :cond_1
    iget-object p3, p2, Lzendesk/commonui/AlmostRealProgressBar;->w:Ljava/lang/Runnable;

    if-nez p3, :cond_4

    .line 8
    new-instance p3, Lzendesk/commonui/a;

    invoke-direct {p3, p2, v0}, Lzendesk/commonui/a;-><init>(Lzendesk/commonui/AlmostRealProgressBar;Ljava/util/List;)V

    iput-object p3, p2, Lzendesk/commonui/AlmostRealProgressBar;->w:Ljava/lang/Runnable;

    .line 9
    iget-object p2, p2, Lzendesk/commonui/AlmostRealProgressBar;->u:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object p2, p0, Lzendesk/messaging/ui/MessagingView;->progressBar:Lzendesk/commonui/AlmostRealProgressBar;

    const-wide/16 v0, 0x12c

    .line 11
    iget-object v2, p2, Lzendesk/commonui/AlmostRealProgressBar;->w:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 12
    iget-object v0, p2, Lzendesk/commonui/AlmostRealProgressBar;->u:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    iput-object p3, p2, Lzendesk/commonui/AlmostRealProgressBar;->w:Ljava/lang/Runnable;

    goto :goto_0

    .line 14
    :cond_3
    iget-object p3, p2, Lzendesk/commonui/AlmostRealProgressBar;->v:Ljava/lang/Runnable;

    if-nez p3, :cond_4

    .line 15
    new-instance p3, Lcom/shabakaty/downloader/j5;

    invoke-direct {p3, p2, v0, v1}, Lcom/shabakaty/downloader/j5;-><init>(Lzendesk/commonui/AlmostRealProgressBar;J)V

    iput-object p3, p2, Lzendesk/commonui/AlmostRealProgressBar;->v:Ljava/lang/Runnable;

    .line 16
    iget-object p2, p2, Lzendesk/commonui/AlmostRealProgressBar;->u:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    :cond_4
    :goto_0
    iget-object p2, p0, Lzendesk/messaging/ui/MessagingView;->lostConnectionBanner:Lzendesk/messaging/ui/LostConnectionBanner;

    iget-object p1, p1, Lzendesk/messaging/ui/MessagingState;->connectionState:Lzendesk/messaging/ConnectionState;

    invoke-virtual {p2, p1}, Lzendesk/messaging/ui/LostConnectionBanner;->update(Lzendesk/messaging/ConnectionState;)V

    .line 18
    iget-object p1, p0, Lzendesk/messaging/ui/MessagingView;->lostConnectionBanner:Lzendesk/messaging/ui/LostConnectionBanner;

    new-instance p2, Lzendesk/messaging/ui/MessagingView$1;

    invoke-direct {p2, p0, p4, p5}, Lzendesk/messaging/ui/MessagingView$1;-><init>(Lzendesk/messaging/ui/MessagingView;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)V

    invoke-virtual {p1, p2}, Lzendesk/messaging/ui/LostConnectionBanner;->setOnRetryConnectionClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
