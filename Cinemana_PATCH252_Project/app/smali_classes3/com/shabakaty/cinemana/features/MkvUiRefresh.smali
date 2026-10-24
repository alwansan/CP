.class public final Lcom/shabakaty/cinemana/features/MkvUiRefresh;
.super Ljava/lang/Object;
.source "MkvUiRefresh.java"


# static fields
.field private static final ADAPTERS:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static final MAIN:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/MkvUiRefresh;->ADAPTERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/shabakaty/cinemana/features/MkvUiRefresh;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adapters()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    sget-object v0, Lcom/shabakaty/cinemana/features/MkvUiRefresh;->ADAPTERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static notifyChanged()V
    .locals 2

    sget-object v0, Lcom/shabakaty/cinemana/features/MkvUiRefresh;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/shabakaty/cinemana/features/MkvUiRefresh$1;

    invoke-direct {v1}, Lcom/shabakaty/cinemana/features/MkvUiRefresh$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static register(Landroidx/recyclerview/widget/RecyclerView$e;)V
    .locals 4

    if-eqz p0, :cond_3

    sget-object v0, Lcom/shabakaty/cinemana/features/MkvUiRefresh;->ADAPTERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_1

    return-void

    :cond_1
    if-nez v2, :cond_0

    sget-object v2, Lcom/shabakaty/cinemana/features/MkvUiRefresh;->ADAPTERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lcom/shabakaty/cinemana/features/MkvUiRefresh;->ADAPTERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
