.class public final synthetic Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Process;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Process;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Process;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Process;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Remote98;->lambda$ffmpeg$2(Ljava/lang/Process;)V

    return-void
.end method
