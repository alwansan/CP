.class Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;
.super Ljava/lang/Object;
.source "ContinueActions262.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->confirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

.field final synthetic val$snapshot:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;->val$snapshot:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;->val$snapshot:Ljava/util/Set;

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->remove(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->end()V

    return-void
.end method
