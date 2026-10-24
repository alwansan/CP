.class public final synthetic Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda2;->f$3:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda2;->f$3:Ljava/io/File;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/shabakaty/cinemana/ca1/SpeedSettings120;->lambda$settings$1(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
