.class public Landroidx/fragment/app/z$a;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/z;->a(Landroidx/fragment/app/z$d$c;Landroidx/fragment/app/z$d$b;Landroidx/fragment/app/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroidx/fragment/app/z$c;

.field public final synthetic s:Landroidx/fragment/app/z;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/z;Landroidx/fragment/app/z$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/z$a;->s:Landroidx/fragment/app/z;

    iput-object p2, p0, Landroidx/fragment/app/z$a;->r:Landroidx/fragment/app/z$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/z$a;->s:Landroidx/fragment/app/z;

    iget-object v0, v0, Landroidx/fragment/app/z;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/z$a;->r:Landroidx/fragment/app/z$c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/z$a;->r:Landroidx/fragment/app/z$c;

    .line 3
    iget-object v1, v0, Landroidx/fragment/app/z$d;->a:Landroidx/fragment/app/z$d$c;

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/z$d;->c:Landroidx/fragment/app/Fragment;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/z$d$c;->f(Landroid/view/View;)V

    :cond_0
    return-void
.end method
