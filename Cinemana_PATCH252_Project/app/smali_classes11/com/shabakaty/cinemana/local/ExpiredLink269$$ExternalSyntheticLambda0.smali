.class public final synthetic Lcom/shabakaty/cinemana/local/ExpiredLink269$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/ExpiredLink269$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/ExpiredLink269$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/shabakaty/cinemana/local/ExpiredLink269$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/ExpiredLink269$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/ExpiredLink269$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget v2, p0, Lcom/shabakaty/cinemana/local/ExpiredLink269$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->lambda$beforeRetry$0(Landroid/content/Context;Ljava/lang/Object;I)V

    return-void
.end method
