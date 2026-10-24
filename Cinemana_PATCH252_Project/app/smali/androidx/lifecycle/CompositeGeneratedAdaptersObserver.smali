.class Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "CompositeGeneratedAdaptersObserver.java"

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field public final r:[Landroidx/lifecycle/c;


# direct methods
.method public constructor <init>([Landroidx/lifecycle/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->r:[Landroidx/lifecycle/c;

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/rh2;Landroidx/lifecycle/e$b;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ft2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ft2;-><init>(I)V

    .line 2
    iget-object v2, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->r:[Landroidx/lifecycle/c;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 3
    invoke-interface {v5, p1, p2, v1, v0}, Landroidx/lifecycle/c;->a(Lcom/shabakaty/downloader/rh2;Landroidx/lifecycle/e$b;ZLcom/shabakaty/downloader/ft2;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->r:[Landroidx/lifecycle/c;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    const/4 v5, 0x1

    .line 5
    invoke-interface {v4, p1, p2, v5, v0}, Landroidx/lifecycle/c;->a(Lcom/shabakaty/downloader/rh2;Landroidx/lifecycle/e$b;ZLcom/shabakaty/downloader/ft2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
