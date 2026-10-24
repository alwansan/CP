.class public final synthetic Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:[F

.field public final synthetic f$1:[F

.field public final synthetic f$10:Ljava/util/List;

.field public final synthetic f$11:Ljava/lang/Runnable;

.field public final synthetic f$12:[Ljava/lang/Runnable;

.field public final synthetic f$2:[I

.field public final synthetic f$3:Landroid/widget/ListView;

.field public final synthetic f$4:Ljava/util/Set;

.field public final synthetic f$5:[Ljava/lang/Runnable;

.field public final synthetic f$6:Ljava/lang/Object;

.field public final synthetic f$7:[Z

.field public final synthetic f$8:[Z

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>([F[F[ILandroid/widget/ListView;Ljava/util/Set;[Ljava/lang/Runnable;Ljava/lang/Object;[Z[ZZLjava/util/List;Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$0:[F

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$1:[F

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$2:[I

    iput-object p4, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$3:Landroid/widget/ListView;

    iput-object p5, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$4:Ljava/util/Set;

    iput-object p6, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$5:[Ljava/lang/Runnable;

    iput-object p7, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$6:Ljava/lang/Object;

    iput-object p8, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$7:[Z

    iput-object p9, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$8:[Z

    iput-boolean p10, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$9:Z

    iput-object p11, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$10:Ljava/util/List;

    iput-object p12, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$11:Ljava/lang/Runnable;

    iput-object p13, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$12:[Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$0:[F

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$1:[F

    iget-object v3, v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$2:[I

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$3:Landroid/widget/ListView;

    iget-object v5, v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$4:Ljava/util/Set;

    iget-object v6, v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$5:[Ljava/lang/Runnable;

    iget-object v7, v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$6:Ljava/lang/Object;

    iget-object v8, v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$7:[Z

    iget-object v9, v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$8:[Z

    iget-boolean v10, v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$9:Z

    iget-object v11, v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$10:Ljava/util/List;

    iget-object v12, v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$11:Ljava/lang/Runnable;

    iget-object v13, v0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda17;->f$12:[Ljava/lang/Runnable;

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-static/range {v1 .. v15}, Lcom/shabakaty/cinemana/ca1/Enhancements;->lambda$drag$10([F[F[ILandroid/widget/ListView;Ljava/util/Set;[Ljava/lang/Runnable;Ljava/lang/Object;[Z[ZZLjava/util/List;Ljava/lang/Runnable;[Ljava/lang/Runnable;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method
