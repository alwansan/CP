.class public Landroidx/fragment/app/q$c;
.super Lcom/shabakaty/downloader/e63;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroidx/fragment/app/q;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/q;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/q$c;->c:Landroidx/fragment/app/q;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/e63;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/q$c;->c:Landroidx/fragment/app/q;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/q;->C(Z)Z

    .line 3
    iget-object v1, v0, Landroidx/fragment/app/q;->h:Lcom/shabakaty/downloader/e63;

    .line 4
    iget-boolean v1, v1, Lcom/shabakaty/downloader/e63;->a:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/q;->Y()Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/q;->g:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    :goto_0
    return-void
.end method
