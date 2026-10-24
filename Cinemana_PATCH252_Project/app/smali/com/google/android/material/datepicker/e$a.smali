.class public Lcom/google/android/material/datepicker/e$a;
.super Ljava/lang/Object;
.source "MaterialDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/google/android/material/datepicker/e;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/e$a;->r:Lcom/google/android/material/datepicker/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/e$a;->r:Lcom/google/android/material/datepicker/e;

    .line 2
    iget-object p1, p1, Lcom/google/android/material/datepicker/e;->H:Ljava/util/LinkedHashSet;

    .line 3
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/pn2;

    .line 4
    iget-object v1, p0, Lcom/google/android/material/datepicker/e$a;->r:Lcom/google/android/material/datepicker/e;

    .line 5
    iget-object v1, v1, Lcom/google/android/material/datepicker/e;->M:Lcom/shabakaty/downloader/fm0;

    invoke-interface {v1}, Lcom/shabakaty/downloader/fm0;->g1()Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/pn2;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/e$a;->r:Lcom/google/android/material/datepicker/e;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0, v0}, Lcom/shabakaty/downloader/ct0;->Y1(ZZ)V

    return-void
.end method
