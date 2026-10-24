.class Lcom/shabakaty/cinemana/ca1/Fix99$1;
.super Ljava/lang/Object;
.source "Fix99.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/Fix99;->header(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Fix99$1;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Fix99$1;->val$state:Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Fix99;->header(Ljava/lang/Object;)V

    return-void
.end method
