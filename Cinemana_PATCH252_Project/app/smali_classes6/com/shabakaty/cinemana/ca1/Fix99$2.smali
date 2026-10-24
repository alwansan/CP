.class Lcom/shabakaty/cinemana/ca1/Fix99$2;
.super Ljava/lang/Object;
.source "Fix99.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/Fix99;->header(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Fix99$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Fix99$2;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/ca1/Native98;->lambda$header$1(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
