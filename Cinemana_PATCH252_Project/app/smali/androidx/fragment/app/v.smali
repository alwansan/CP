.class public Landroidx/fragment/app/v;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Landroidx/fragment/app/y$a;

.field public final synthetic s:Landroidx/fragment/app/Fragment;

.field public final synthetic t:Lcom/shabakaty/downloader/iv;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/y$a;Landroidx/fragment/app/Fragment;Lcom/shabakaty/downloader/iv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/v;->r:Landroidx/fragment/app/y$a;

    iput-object p2, p0, Landroidx/fragment/app/v;->s:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/fragment/app/v;->t:Lcom/shabakaty/downloader/iv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->r:Landroidx/fragment/app/y$a;

    iget-object v1, p0, Landroidx/fragment/app/v;->s:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/v;->t:Lcom/shabakaty/downloader/iv;

    check-cast v0, Landroidx/fragment/app/q$d;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/q$d;->a(Landroidx/fragment/app/Fragment;Lcom/shabakaty/downloader/iv;)V

    return-void
.end method
