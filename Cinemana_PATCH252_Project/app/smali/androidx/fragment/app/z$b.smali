.class public Landroidx/fragment/app/z$b;
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
    iput-object p1, p0, Landroidx/fragment/app/z$b;->s:Landroidx/fragment/app/z;

    iput-object p2, p0, Landroidx/fragment/app/z$b;->r:Landroidx/fragment/app/z$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/z$b;->s:Landroidx/fragment/app/z;

    iget-object v0, v0, Landroidx/fragment/app/z;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/z$b;->r:Landroidx/fragment/app/z$c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/z$b;->s:Landroidx/fragment/app/z;

    iget-object v0, v0, Landroidx/fragment/app/z;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/z$b;->r:Landroidx/fragment/app/z$c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
