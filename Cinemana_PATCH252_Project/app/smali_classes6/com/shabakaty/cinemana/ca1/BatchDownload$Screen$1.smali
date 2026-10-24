.class Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$1;
.super Ljava/lang/Object;
.source "BatchDownload.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$1;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 152
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 152
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 152
    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$1;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->query:Ljava/lang/String;

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$1;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "number="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$1;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object p3, p3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->query:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string p4, "search"

    invoke-virtual {p1, p4, p2, p3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$1;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rebuild()V

    return-void
.end method
