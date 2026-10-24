.class public Lcom/shabakaty/downloader/tk1;
.super Ljava/lang/Object;
.source "FragmentStore.java"

# interfaces
.implements Lcom/shabakaty/downloader/oh3;
.implements Lcom/shabakaty/downloader/tq3;
.implements Lcom/shabakaty/downloader/k63;


# instance fields
.field public final synthetic r:I

.field public s:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/s;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    iput p1, p0, Lcom/shabakaty/downloader/tk1;->r:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 26
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    .line 28
    new-instance p1, Lcom/shabakaty/downloader/xd2;

    const/16 v0, 0x40

    const/16 v1, 0x400

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/xd2;-><init>(II)V

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    .line 29
    new-instance p1, Lcom/shabakaty/downloader/xd2;

    const/16 v1, 0x2000

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/xd2;-><init>(II)V

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    return-void

    .line 30
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 31
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 32
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/shabakaty/downloader/ke5;

    const-string v1, ""

    const-wide/16 v2, 0x0

    .line 33
    invoke-direct {p1, v1, v2, v3, v0}, Lcom/shabakaty/downloader/ke5;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    new-instance p1, Lcom/shabakaty/downloader/ke5;

    .line 34
    invoke-direct {p1, v1, v2, v3, v0}, Lcom/shabakaty/downloader/ke5;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    .line 35
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    return-void

    .line 36
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/shabakaty/downloader/tk1;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    .line 42
    iput-object p2, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    .line 43
    iput-object p3, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    .line 20
    iput-object p2, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    .line 21
    iput-object p3, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Landroidx/camera/view/PreviewView;Lcom/shabakaty/cinemana/utils/ViewFinderOverlay;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    .line 24
    iput-object p2, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    .line 25
    iput-object p3, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/c;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    .line 46
    iput-object p2, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    .line 47
    iput-object p3, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Lcom/shabakaty/downloader/sh1;Lcom/shabakaty/downloader/bl4;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    .line 52
    iput-object p3, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    .line 53
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/b33;Lcom/shabakaty/downloader/p73;Lcom/shabakaty/downloader/xl2;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/bs0;Lcom/shabakaty/downloader/zp3;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    .line 16
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/h30;Ljava/util/List;Lcom/shabakaty/downloader/tk1;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    const-string v0, "arguments"

    .line 1
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ke5;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ke5;->a()Lcom/shabakaty/downloader/ke5;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ou3;Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/s91;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/vh5;Ljava/lang/String;Lcom/shabakaty/downloader/if2;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    .line 13
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    .line 14
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v1, Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/wt2;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    .line 54
    sget-object v0, Lcom/shabakaty/downloader/rk2;->a:Lcom/shabakaty/downloader/rk2;

    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/downloader/tk1;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/wt2;Lcom/shabakaty/downloader/rk2;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/wt2;Lcom/shabakaty/downloader/rk2;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 56
    iput-object p3, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    .line 57
    iput-object p2, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shabakaty/downloader/tk1;
    .locals 2

    const p1, 0x7f0d00ac

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-nez p2, :cond_1

    .line 2
    move-object p1, p0

    check-cast p1, Landroid/widget/FrameLayout;

    const p2, 0x7f0a036f

    .line 3
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/tk1;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {p2, p0, p1, v0}, Lcom/shabakaty/downloader/tk1;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p2

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Missing required view with ID: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    throw v0
.end method


# virtual methods
.method public A(Landroidx/fragment/app/s;)V
    .locals 3

    .line 1
    iget-object p1, p1, Landroidx/fragment/app/s;->c:Landroidx/fragment/app/Fragment;

    .line 2
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/xj1;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xj1;->b(Landroidx/fragment/app/Fragment;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/s;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 5
    invoke-static {v0}, Landroidx/fragment/app/q;->P(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed fragment from active set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public B(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/util/List;Lorg/json/JSONArray;Lcom/shabakaty/downloader/w23;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/b23;",
            ">;",
            "Lorg/json/JSONArray;",
            "Lcom/shabakaty/downloader/w23;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/b23;

    const-string v4, "influenceId"

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2, p3}, Lcom/shabakaty/downloader/b23;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/w23;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;Lcom/shabakaty/downloader/ag6;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/b23;",
            ">;",
            "Lcom/shabakaty/downloader/ag6;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p2, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    .line 2
    iget-object p2, p2, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast p2, Lorg/json/JSONArray;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/w23;->s:Lcom/shabakaty/downloader/w23;

    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/tk1;->b(Ljava/util/List;Lorg/json/JSONArray;Lcom/shabakaty/downloader/w23;)V

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/w23;->t:Lcom/shabakaty/downloader/w23;

    invoke-virtual {p0, p1, p2, v0}, Lcom/shabakaty/downloader/tk1;->b(Ljava/util/List;Lorg/json/JSONArray;Lcom/shabakaty/downloader/w23;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :pswitch_0
    new-instance v0, Lcom/shabakaty/downloader/tk1;

    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ke5;

    .line 2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ke5;->a()Lcom/shabakaty/downloader/ke5;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/tk1;-><init>(Lcom/shabakaty/downloader/ke5;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ke5;

    iget-object v3, v0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .line 4
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ke5;->a()Lcom/shabakaty/downloader/ke5;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lcom/shabakaty/downloader/iw1;Lcom/shabakaty/downloader/k34;)Lcom/shabakaty/downloader/iw1;
    .locals 2

    .line 1
    iget-object v0, p2, Lcom/shabakaty/downloader/k34;->a:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-GOOGLE-APP-ID"

    invoke-virtual {p0, p1, v1, v0}, Lcom/shabakaty/downloader/tk1;->e(Lcom/shabakaty/downloader/iw1;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/tk1;->e(Lcom/shabakaty/downloader/iw1;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-API-CLIENT-VERSION"

    const-string v1, "18.2.1"

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/tk1;->e(Lcom/shabakaty/downloader/iw1;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "application/json"

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/tk1;->e(Lcom/shabakaty/downloader/iw1;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p2, Lcom/shabakaty/downloader/k34;->b:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-DEVICE-MODEL"

    invoke-virtual {p0, p1, v1, v0}, Lcom/shabakaty/downloader/tk1;->e(Lcom/shabakaty/downloader/iw1;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p2, Lcom/shabakaty/downloader/k34;->c:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-OS-BUILD-VERSION"

    invoke-virtual {p0, p1, v1, v0}, Lcom/shabakaty/downloader/tk1;->e(Lcom/shabakaty/downloader/iw1;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p2, Lcom/shabakaty/downloader/k34;->d:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-OS-DISPLAY-VERSION"

    invoke-virtual {p0, p1, v1, v0}, Lcom/shabakaty/downloader/tk1;->e(Lcom/shabakaty/downloader/iw1;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p2, p2, Lcom/shabakaty/downloader/k34;->e:Lcom/shabakaty/downloader/s12;

    .line 9
    check-cast p2, Lcom/shabakaty/downloader/ux1;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ux1;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-CRASHLYTICS-INSTALLATION-ID"

    .line 10
    invoke-virtual {p0, p1, v0, p2}, Lcom/shabakaty/downloader/tk1;->e(Lcom/shabakaty/downloader/iw1;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/iw1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/iw1;->c:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(Ljava/util/Map;)Lcom/shabakaty/downloader/iw1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/shabakaty/downloader/iw1;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/wt2;

    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/iw1;

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/iw1;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    iget-object p1, v0, Lcom/shabakaty/downloader/iw1;->c:Ljava/util/Map;

    const-string v1, "User-Agent"

    const-string v2, "Crashlytics Android SDK/18.2.1"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, v0, Lcom/shabakaty/downloader/iw1;->c:Ljava/util/Map;

    const-string v1, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string v2, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/s;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Landroidx/fragment/app/s;->c:Landroidx/fragment/app/Fragment;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public j(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/s;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Landroidx/fragment/app/s;->c:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public k()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/s;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/s;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/s;

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, v2, Landroidx/fragment/app/s;->c:Landroidx/fragment/app/Fragment;

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public m()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/o91;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/o91;

    invoke-interface {v0}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public n(Ljava/lang/String;)Landroidx/fragment/app/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/s;

    return-object p1
.end method

.method public o()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public p(Lcom/shabakaty/downloader/z23;Lcom/shabakaty/downloader/ag6;Lcom/shabakaty/downloader/ag6;Ljava/lang/String;Lcom/shabakaty/downloader/z33;)Lcom/shabakaty/downloader/z33;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p1, p3, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    if-eqz p5, :cond_1

    .line 4
    iput-object p3, p5, Lcom/shabakaty/downloader/z33;->b:Lcom/shabakaty/downloader/ag6;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p5, Lcom/shabakaty/downloader/z33;

    invoke-direct {p5, v0, p3}, Lcom/shabakaty/downloader/z33;-><init>(Lcom/shabakaty/downloader/ag6;Lcom/shabakaty/downloader/ag6;)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 7
    iput-object p1, p2, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    if-eqz p5, :cond_3

    .line 8
    iput-object p2, p5, Lcom/shabakaty/downloader/z33;->a:Lcom/shabakaty/downloader/ag6;

    goto :goto_0

    .line 9
    :cond_3
    new-instance p5, Lcom/shabakaty/downloader/z33;

    invoke-direct {p5, p2, v0}, Lcom/shabakaty/downloader/z33;-><init>(Lcom/shabakaty/downloader/ag6;Lcom/shabakaty/downloader/ag6;)V

    :goto_0
    return-object p5
.end method

.method public q(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/rk2;

    const-string v2, "Failed to parse settings JSON from "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/rk2;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/rk2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/rk2;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/vh5;

    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/if2;

    check-cast p1, Lcom/shabakaty/downloader/cf7;

    check-cast p2, Lcom/shabakaty/downloader/zk4;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vh5;->e()V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gf5;

    .line 3
    invoke-interface {p1, v1, v2}, Lcom/shabakaty/downloader/gf5;->x0(Ljava/lang/String;Lcom/shabakaty/downloader/if2;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/vh5;->g(Lcom/shabakaty/downloader/zk4;)V

    return-void
.end method

.method public s(Lcom/shabakaty/downloader/z23;Lcom/shabakaty/downloader/ag6;Lcom/shabakaty/downloader/ag6;Ljava/lang/String;)Lcom/shabakaty/downloader/z33;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p1, p3, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/z33;

    invoke-direct {p1, v0, p3}, Lcom/shabakaty/downloader/z33;-><init>(Lcom/shabakaty/downloader/ag6;Lcom/shabakaty/downloader/ag6;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 6
    iput-object p1, p2, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/z33;

    invoke-direct {p1, p2, v0}, Lcom/shabakaty/downloader/z33;-><init>(Lcom/shabakaty/downloader/ag6;Lcom/shabakaty/downloader/ag6;)V

    :goto_0
    move-object v0, p1

    :goto_1
    return-object v0
.end method

.method public t(Lcom/shabakaty/downloader/k34;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/k34;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/k34;->h:Ljava/lang/String;

    const-string v2, "build_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/k34;->g:Ljava/lang/String;

    const-string v2, "display_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v1, p1, Lcom/shabakaty/downloader/k34;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/k34;->f:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "instance"

    .line 7
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/tk1;->r:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "NavDeepLinkRequest"

    const-string v1, "{"

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/vf3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_0

    const-string v1, " uri="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " action="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " mimetype="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " }"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public u(Lcom/shabakaty/downloader/k66;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    iget v0, p1, Lcom/shabakaty/downloader/k66;->c:I

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/rk2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings response code was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/rk2;->d(Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xca

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/tk1;->q(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_2

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/rk2;

    const-string v1, "Settings request failed; (status: "

    const-string v2, ") from "

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/lh4;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/rk2;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public v(Lcom/shabakaty/downloader/uk4;)V
    .locals 3

    iget-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ou3;

    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    .line 1
    iget-object v2, p1, Lcom/shabakaty/downloader/ou3;->a:Lcom/shabakaty/downloader/m64;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-object p1, p1, Lcom/shabakaty/downloader/ou3;->a:Lcom/shabakaty/downloader/m64;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/m64;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 4
    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public x(Lcom/shabakaty/downloader/rl0;Landroid/net/Uri;Ljava/util/Map;JJLcom/shabakaty/downloader/p91;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/rl0;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lcom/shabakaty/downloader/p91;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/shabakaty/downloader/co0;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/co0;-><init>(Lcom/shabakaty/downloader/rl0;JJ)V

    .line 2
    iput-object v6, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/n91;

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/s91;

    invoke-interface {p1, p2, p3}, Lcom/shabakaty/downloader/s91;->f(Landroid/net/Uri;Ljava/util/Map;)[Lcom/shabakaty/downloader/n91;

    move-result-object p1

    .line 5
    array-length p3, p1

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_1

    .line 6
    aget-object p1, p1, p6

    iput-object p1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    goto/16 :goto_6

    .line 7
    :cond_1
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_7

    aget-object v1, p1, v0

    .line 8
    :try_start_0
    invoke-interface {v1, v6}, Lcom/shabakaty/downloader/n91;->h(Lcom/shabakaty/downloader/o91;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    iput-object v1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput p6, v6, Lcom/shabakaty/downloader/co0;->f:I

    goto :goto_4

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/n91;

    if-nez v1, :cond_6

    .line 12
    iget-wide v1, v6, Lcom/shabakaty/downloader/co0;->d:J

    cmp-long v3, v1, p4

    if-nez v3, :cond_5

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 13
    iget-object p2, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/n91;

    if-nez p2, :cond_4

    .line 14
    iget-wide p2, v6, Lcom/shabakaty/downloader/co0;->d:J

    cmp-long p8, p2, p4

    if-nez p8, :cond_3

    goto :goto_1

    :cond_3
    const/4 p7, 0x0

    .line 15
    :cond_4
    :goto_1
    invoke-static {p7}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 16
    iput p6, v6, Lcom/shabakaty/downloader/co0;->f:I

    .line 17
    throw p1

    :catch_0
    nop

    .line 18
    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/n91;

    if-nez v1, :cond_6

    .line 19
    iget-wide v1, v6, Lcom/shabakaty/downloader/co0;->d:J

    cmp-long v3, v1, p4

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x1

    .line 20
    :goto_3
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 21
    iput p6, v6, Lcom/shabakaty/downloader/co0;->f:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_7
    :goto_4
    iget-object p3, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast p3, Lcom/shabakaty/downloader/n91;

    if-nez p3, :cond_a

    .line 23
    new-instance p3, Lcom/shabakaty/downloader/yv4;

    .line 24
    sget p4, Lcom/shabakaty/downloader/sy4;->a:I

    .line 25
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    :goto_5
    array-length p5, p1

    if-ge p6, p5, :cond_9

    .line 27
    aget-object p5, p1, p6

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    array-length p5, p1

    add-int/lit8 p5, p5, -0x1

    if-ge p6, p5, :cond_8

    const-string p5, ", "

    .line 29
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 p6, p6, 0x1

    goto :goto_5

    .line 30
    :cond_9
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p4, 0x3a

    .line 31
    invoke-static {p1, p4}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "None of the available extractors ("

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-direct {p3, p1, p2}, Lcom/shabakaty/downloader/yv4;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p3

    .line 34
    :cond_a
    :goto_6
    iget-object p1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/n91;

    invoke-interface {p1, p8}, Lcom/shabakaty/downloader/n91;->g(Lcom/shabakaty/downloader/p91;)V

    return-void
.end method

.method public y()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/xl2;

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/xl2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/xl2;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PREFS_OS_OUTCOMES_V2"

    .line 6
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/s73;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public z(Landroidx/fragment/app/s;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/s;->c:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/tk1;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    if-eqz p1, :cond_2

    .line 5
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/xj1;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/xj1;->a(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/xj1;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/xj1;->b(Landroidx/fragment/app/Fragment;)V

    :goto_0
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, v0, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    :cond_2
    const/4 p1, 0x2

    .line 9
    invoke-static {p1}, Landroidx/fragment/app/q;->P(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added fragment to active set "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
