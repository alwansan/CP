.class public final synthetic Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;


# instance fields
.field public final synthetic f$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda1;->f$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda1;->f$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->lambda$onActivityResult$1$com-shabakaty-cinemana-local-LocalAccountActivity(Landroid/net/Uri;)V

    return-void
.end method
