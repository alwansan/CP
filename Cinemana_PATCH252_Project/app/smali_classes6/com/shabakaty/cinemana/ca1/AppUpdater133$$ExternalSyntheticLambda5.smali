.class public final synthetic Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda5;->f$0:[Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda5;->f$0:[Ljava/lang/Object;

    iget v1, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda5;->f$1:I

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->lambda$downloadApk$14([Ljava/lang/Object;I)V

    return-void
.end method
