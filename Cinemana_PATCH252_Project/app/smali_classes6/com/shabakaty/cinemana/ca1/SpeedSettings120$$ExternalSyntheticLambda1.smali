.class public final synthetic Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    iput p2, p0, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    iget v1, p0, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/SpeedSettings120;->lambda$settings$0(Ljava/io/File;I)V

    return-void
.end method
