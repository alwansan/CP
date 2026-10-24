.class public final Lcom/shabakaty/cinemana/mod/HideControllerRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final target:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/HideControllerRunnable;->target:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/mod/HideControllerRunnable;->target:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    :cond_0
    return-void
.end method
