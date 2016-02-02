.class Lcom/android/settings/bluetooth/BluetoothSettings$6;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 533
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v13, :cond_0

    .line 534
    const-string v13, "BluetoothSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onClick() called for other View: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 539
    .local v3, "device":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v13}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 540
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    const v14, 0x7f0f002f

    invoke-virtual {v13, v14}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v11

    check-cast v11, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 543
    .local v11, "profileFragment":Lcom/android/settings/bluetooth/DeviceProfilesSettings;
    # getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mPreDeviceAddress:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$600()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 544
    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    # getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mPreDeviceAddress:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$600()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 545
    # getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mNeedToRemove:Z
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$700()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 546
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 548
    const/4 v11, 0x0

    .line 553
    :cond_1
    # getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$800()Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 554
    # getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$800()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 555
    .local v10, "parent":Landroid/view/ViewGroup;
    if-eqz v10, :cond_2

    .line 556
    # getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$800()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 559
    .end local v10    # "parent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    # setter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mPreDeviceAddress:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 561
    if-nez v11, :cond_3

    .line 562
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v13}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 563
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v13, 0x7f040016

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    # setter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {v13}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$802(Landroid/view/View;)Landroid/view/View;

    .line 564
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    const v14, 0x7f0f002f

    invoke-virtual {v13, v14}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v11

    .end local v11    # "profileFragment":Lcom/android/settings/bluetooth/DeviceProfilesSettings;
    check-cast v11, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 569
    .restart local v11    # "profileFragment":Lcom/android/settings/bluetooth/DeviceProfilesSettings;
    const v13, 0x7f040017

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 570
    .local v8, "header":Landroid/view/View;
    invoke-virtual {v11}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getListView()Landroid/widget/ListView;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 573
    .end local v8    # "header":Landroid/view/View;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    # getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$800()Landroid/view/View;

    move-result-object v6

    .line 574
    .local v6, "dialogLayout":Landroid/view/View;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 575
    .local v12, "settingsDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v11, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->setDevice(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 576
    const v13, 0x7f0f002b

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 577
    .local v4, "deviceName":Landroid/widget/EditText;
    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 579
    move-object v7, v11

    .line 580
    .local v7, "dpsFragment":Lcom/android/settings/bluetooth/DeviceProfilesSettings;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 581
    .local v2, "context":Landroid/content/Context;
    const/4 v13, 0x1

    # setter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mNeedToRemove:Z
    invoke-static {v13}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$702(Z)Z

    .line 582
    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 583
    const v13, 0x7f090298

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 584
    const v13, 0x7f0901d3

    new-instance v14, Lcom/android/settings/bluetooth/BluetoothSettings$6$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6, v3}, Lcom/android/settings/bluetooth/BluetoothSettings$6$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings$6;Landroid/view/View;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 593
    const v13, 0x7f0901d6

    new-instance v14, Lcom/android/settings/bluetooth/BluetoothSettings$6$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings$6$2;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings$6;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 606
    new-instance v13, Lcom/android/settings/bluetooth/BluetoothSettings$6$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1, v7}, Lcom/android/settings/bluetooth/BluetoothSettings$6$3;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings$6;Landroid/app/Activity;Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 617
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 618
    .local v5, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->create()V

    .line 619
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 620
    new-instance v13, Lcom/android/settings/bluetooth/BluetoothSettings$6$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings$6$4;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings$6;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 641
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const v14, 0x20008

    invoke-virtual {v13, v14}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0
.end method
