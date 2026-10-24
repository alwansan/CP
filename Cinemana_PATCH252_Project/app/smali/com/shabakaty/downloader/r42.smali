.class public abstract Lcom/shabakaty/downloader/r42;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemEditProfileInputBinding.java"


# instance fields
.field public final M:Lcom/google/android/material/textfield/TextInputLayout;

.field public final N:Landroid/widget/TextView;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/shabakaty/downloader/r42;->M:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    iput-object p5, p0, Lcom/shabakaty/downloader/r42;->N:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract G(Ljava/lang/String;)V
.end method

.method public abstract H(Ljava/lang/Boolean;)V
.end method

.method public abstract I(Ljava/lang/String;)V
.end method
