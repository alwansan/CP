.class public final synthetic Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda2;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda2;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda2;->f$0:[Ljava/lang/String;

    iget-object v2, v0, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iget-object v3, v0, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda2;->f$2:Landroid/view/View;

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v1 .. v12}, Lcom/shabakaty/cinemana/local/LocalRuntime;->lambda$decorate$6([Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/view/View;IIIIIIII)V

    return-void
.end method
