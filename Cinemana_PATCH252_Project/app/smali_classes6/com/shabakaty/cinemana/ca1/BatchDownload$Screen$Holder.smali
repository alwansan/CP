.class final Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;
.super Ljava/lang/Object;
.source "BatchDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Holder"
.end annotation


# instance fields
.field check:Landroid/widget/CheckBox;

.field info:Landroid/widget/LinearLayout;

.field quality:Landroid/widget/Button;

.field row:Landroid/widget/LinearLayout;

.field sub:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
