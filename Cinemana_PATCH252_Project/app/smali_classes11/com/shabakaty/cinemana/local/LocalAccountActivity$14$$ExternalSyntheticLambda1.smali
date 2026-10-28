.class public final synthetic Lcom/shabakaty/cinemana/local/LocalAccountActivity$14$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;


# instance fields
.field public final synthetic f$0:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

.field public final synthetic f$1:Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14$$ExternalSyntheticLambda1;->f$0:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14$$ExternalSyntheticLambda1;->f$1:Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14$$ExternalSyntheticLambda1;->f$0:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14$$ExternalSyntheticLambda1;->f$1:Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14;->lambda$run$0(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)V

    return-void
.end method
