.class Lcom/shabakaty/cinemana/ca1/ThemeStudio142$7;
.super Ljava/lang/Object;
.source "ThemeStudio142.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->header()Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/ThemeStudio142;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$7;->this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$7;->this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->finish()V

    return-void
.end method
