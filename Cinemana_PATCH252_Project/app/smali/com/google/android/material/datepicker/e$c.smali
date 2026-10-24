.class public Lcom/google/android/material/datepicker/e$c;
.super Lcom/shabakaty/downloader/u63;
.source "MaterialDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/e;->g2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/u63<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/e;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/e$c;->a:Lcom/google/android/material/datepicker/e;

    invoke-direct {p0}, Lcom/shabakaty/downloader/u63;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/e$c;->a:Lcom/google/android/material/datepicker/e;

    sget v0, Lcom/google/android/material/datepicker/e;->Y:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/e;->h2()V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/datepicker/e$c;->a:Lcom/google/android/material/datepicker/e;

    .line 4
    iget-object v0, p1, Lcom/google/android/material/datepicker/e;->X:Landroid/widget/Button;

    .line 5
    iget-object p1, p1, Lcom/google/android/material/datepicker/e;->M:Lcom/shabakaty/downloader/fm0;

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/fm0;->U0()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
