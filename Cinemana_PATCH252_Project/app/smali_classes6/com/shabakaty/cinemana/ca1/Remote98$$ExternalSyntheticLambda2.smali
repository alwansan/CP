.class public final synthetic Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda2;->f$2:J

    iput-object p5, p0, Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda2;->f$3:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda2;->f$2:J

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda2;->f$3:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/cinemana/ca1/Remote98;->lambda$frame$1(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/atomic/AtomicBoolean;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
