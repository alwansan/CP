.class Landroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source "SingleGeneratedAdapterObserver.java"

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field public final r:Landroidx/lifecycle/c;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->r:Landroidx/lifecycle/c;

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/rh2;Landroidx/lifecycle/e$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->r:Landroidx/lifecycle/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Landroidx/lifecycle/c;->a(Lcom/shabakaty/downloader/rh2;Landroidx/lifecycle/e$b;ZLcom/shabakaty/downloader/ft2;)V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->r:Landroidx/lifecycle/c;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Landroidx/lifecycle/c;->a(Lcom/shabakaty/downloader/rh2;Landroidx/lifecycle/e$b;ZLcom/shabakaty/downloader/ft2;)V

    return-void
.end method
