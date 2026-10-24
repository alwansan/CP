.class public final synthetic Lcom/shabakaty/downloader/mf3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/od;


# instance fields
.field public final synthetic a:Landroidx/camera/view/a;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/mf3;->a:Landroidx/camera/view/a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/mf3;->a:Landroidx/camera/view/a;

    check-cast p1, Ljava/lang/Void;

    .line 1
    iget-object p1, v0, Landroidx/camera/view/a;->d:Landroidx/camera/view/c;

    invoke-virtual {p1}, Landroidx/camera/view/c;->g()Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    return-object p1
.end method
