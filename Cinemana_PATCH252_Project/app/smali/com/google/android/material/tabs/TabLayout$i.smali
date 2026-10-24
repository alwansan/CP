.class public Lcom/google/android/material/tabs/TabLayout$i;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/w35;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/w35;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$i;->r:Lcom/shabakaty/downloader/w35;

    return-void
.end method


# virtual methods
.method public E1(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method

.method public F(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method

.method public p0(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$i;->r:Lcom/shabakaty/downloader/w35;

    .line 2
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$f;->d:I

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/w35;->setCurrentItem(I)V

    return-void
.end method
