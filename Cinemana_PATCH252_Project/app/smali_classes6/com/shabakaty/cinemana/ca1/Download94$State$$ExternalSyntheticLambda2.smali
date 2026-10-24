.class public final synthetic Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/ca1/Download94$State;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda2;->f$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda2;->f$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->lambda$loadWorkNames$10$com-shabakaty-cinemana-ca1-Download94$State(Ljava/util/Map;)V

    return-void
.end method
