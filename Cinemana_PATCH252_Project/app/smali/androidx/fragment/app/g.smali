.class public Landroidx/fragment/app/g;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Landroidx/fragment/app/z$d;

.field public final synthetic s:Landroidx/fragment/app/z$d;

.field public final synthetic t:Z

.field public final synthetic u:Lcom/shabakaty/downloader/ad;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/c;Landroidx/fragment/app/z$d;Landroidx/fragment/app/z$d;ZLcom/shabakaty/downloader/ad;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/fragment/app/g;->r:Landroidx/fragment/app/z$d;

    iput-object p3, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/z$d;

    iput-boolean p4, p0, Landroidx/fragment/app/g;->t:Z

    iput-object p5, p0, Landroidx/fragment/app/g;->u:Lcom/shabakaty/downloader/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->r:Landroidx/fragment/app/z$d;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/z$d;

    .line 4
    iget-object v1, v1, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 5
    iget-boolean v2, p0, Landroidx/fragment/app/g;->t:Z

    iget-object v3, p0, Landroidx/fragment/app/g;->u:Lcom/shabakaty/downloader/ad;

    const/4 v4, 0x0

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/y;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLcom/shabakaty/downloader/ad;Z)V

    return-void
.end method
