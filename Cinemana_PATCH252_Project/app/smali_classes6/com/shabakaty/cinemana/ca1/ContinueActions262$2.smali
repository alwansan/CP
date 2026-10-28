.class Lcom/shabakaty/cinemana/ca1/ContinueActions262$2;
.super Ljava/lang/Object;
.source "ContinueActions262.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/ContinueActions262;->attachMore(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$p:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$2;->val$p:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$2;->val$p:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->attach()V

    return-void
.end method
